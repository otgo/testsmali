.class public Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
.super Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;
.source "SupersonicConfig.java"


# static fields
.field public static final AGE:Ljava/lang/String; = "age"

.field public static final APPLICATION_KEY:Ljava/lang/String; = "applicationKey"

.field public static final APPLICATION_PRIVATE_KEY:Ljava/lang/String; = "privateKey"

.field public static final APPLICATION_USER_AGE_GROUP:Ljava/lang/String; = "applicationUserAgeGroup"

.field public static final APPLICATION_USER_GENDER:Ljava/lang/String; = "applicationUserGender"

.field static CAMPAIGN_ID:Ljava/lang/String; = null

.field public static final CLIENT_SIDE_CALLBACKS:Ljava/lang/String; = "useClientSideCallbacks"

.field public static final GENDER:Ljava/lang/String; = "gender"

.field public static final ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field public static final ITEM_NAME:Ljava/lang/String; = "itemName"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final MAX_VIDEO_LENGTH:Ljava/lang/String; = "maxVideoLength"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "SupersonicAds"

.field public static final USER_ID:Ljava/lang/String; = "userId"

.field private static mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;


# instance fields
.field private final CUSTOM_PARAM_PREFIX:Ljava/lang/String;

.field private final SDK_PLUGIN_TYPE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mOfferwallCustomParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoCustomParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "campaignId"

    sput-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->CAMPAIGN_ID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;-><init>()V

    .line 23
    const-class v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "custom_"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->CUSTOM_PARAM_PREFIX:Ljava/lang/String;

    .line 47
    const-string v0, "SDKPluginType"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->SDK_PLUGIN_TYPE:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private convertCustomParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 165
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 166
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 167
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 169
    .local v2, "k":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 170
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 171
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "custom_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":convertCustomParams()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method

.method public static declared-synchronized getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    .locals 2

    .prologue
    .line 64
    const-class v1, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    invoke-direct {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;-><init>()V

    sput-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    .line 67
    :cond_0
    sget-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private validateAgeGroup(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 415
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 417
    .local v0, "age":I
    if-ltz v0, :cond_0

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 418
    :cond_0
    const-string v2, "applicationUserAgeGroup"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "applicationUserAgeGroup value should be between 0-8"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v0    # "age":I
    :cond_1
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "applicationUserAgeGroup"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "applicationUserAgeGroup value should be between 0-8"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateApplicationKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 516
    if-eqz p1, :cond_2

    .line 518
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    .line 520
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 521
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    const-string v1, "applicationKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "applicationKey value should contains only english characters and numbers"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 532
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const-string v1, "applicationKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "applicationKey length should be between 5-10 characters"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 530
    :cond_2
    const-string v1, "applicationKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "applicationKey value is missing"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateClientSideCallbacks(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 445
    const-string v0, "useClientSideCallbacks"

    invoke-virtual {p0, v0, p1, p2}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 446
    return-void
.end method

.method private validateGender(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "gender"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 429
    if-eqz p1, :cond_0

    .line 430
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 432
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

    .line 435
    const-string v1, "gender"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "gender"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateItemCount(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 346
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 348
    .local v1, "itemCount":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const v2, 0x186a0

    if-le v1, v2, :cond_1

    .line 349
    :cond_0
    const-string v2, "itemCount"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemCount value should be between 1-100000"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v1    # "itemCount":I
    :cond_1
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "itemCount"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "itemCount value should be between 1-100000"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateItemName(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 358
    if-eqz p1, :cond_2

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 361
    :cond_0
    const-string v0, "itemName"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemNamelength should be between 1-50 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 364
    :cond_2
    const-string v0, "itemName"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemNamelength should be between 1-50 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateLanguage(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 401
    if-eqz p1, :cond_2

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 404
    const-string v0, "^[a-zA-Z]*$"

    .line 405
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 406
    :cond_0
    const-string v1, "language"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language value should be two letters format."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 410
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 408
    :cond_2
    const-string v1, "language"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language value should be two letters format."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateMaxVideoLength(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 388
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 390
    .local v0, "age":I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    .line 391
    :cond_0
    const-string v2, "maxVideoLength"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "maxVideoLength value should be between 1-1000"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v0    # "age":I
    :cond_1
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "maxVideoLength"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "maxVideoLength value should be between 1-1000"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validatePrivateKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 370
    if-eqz p1, :cond_2

    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_1

    .line 372
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 373
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    const-string v1, "privateKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "privateKey should contains only characters and numbers"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 384
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string v1, "privateKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "privateKey length should be between 5-30 characters"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 382
    :cond_2
    const-string v1, "privateKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "privateKey length should be between 5-30 characters"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validatePrivateKeyItemNameCountCombination(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 488
    const-string v0, "privateKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "itemName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "itemCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    :cond_0
    const-string v0, "privateKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "itemName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "itemCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 496
    :cond_1
    const-string v0, "itemName, itemCount or privateKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "configure itemName/itemCount requires the following configurations: itemName, itemCount and privateKey"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 500
    :cond_2
    return-void
.end method

.method private validateUserId(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 504
    if-eqz p1, :cond_2

    .line 505
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 506
    :cond_0
    const-string v0, "userId"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId value should be between 1-64 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 508
    :cond_2
    const-string v0, "userId"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId is missing"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method


# virtual methods
.method protected adapterPostValidation(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 2
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 472
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validatePrivateKeyItemNameCountCombination(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method getCampaignId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    sget-object v2, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->CAMPAIGN_ID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "campaignId":Ljava/lang/String;
    return-object v0
.end method

.method public getClientSideCallbacks()Z
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 82
    .local v0, "csc":Z
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "useClientSideCallbacks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "useClientSideCallbacks"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 7

    .prologue
    .line 132
    const/4 v1, -0x1

    .line 134
    .local v1, "itemCount":I
    :try_start_0
    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v4, "itemCount"

    invoke-static {v3, v4}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "itemCountString":Ljava/lang/String;
    invoke-static {v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 142
    .end local v2    # "itemCountString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":getItemCount()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "itemName"

    invoke-static {v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "itemName":Ljava/lang/String;
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "language"

    invoke-static {v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "lang":Ljava/lang/String;
    return-object v0
.end method

.method public getMaxVideoLength()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "maxVideoLength"

    invoke-static {v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "maxVideosLength":Ljava/lang/String;
    return-object v0
.end method

.method getMaxVideos()I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getMaxVideosToPresent()I

    move-result v0

    return v0
.end method

.method getMaxVideosPerIteration()I
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getMaxVideosPerIterationToPresent()I

    move-result v0

    return v0
.end method

.method public getOfferwallCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mOfferwallCustomParams:Ljava/util/Map;

    return-object v0
.end method

.method getPluginType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "SDKPluginType"

    invoke-static {v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "pluginType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 116
    const-string v0, ""

    .line 118
    :cond_0
    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "privateKey"

    invoke-static {v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "privateKey":Ljava/lang/String;
    return-object v0
.end method

.method protected getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, "SupersonicAds"

    return-object v0
.end method

.method public getRewardedVideoCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mRewardedVideoCustomParams:Ljava/util/Map;

    return-object v0
.end method

.method getUserAgeGroup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "applicationUserAgeGroup"

    invoke-static {v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "ageGroup":Ljava/lang/String;
    return-object v0
.end method

.method getUserGender()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "applicationUserGender"

    invoke-static {v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "userGender":Ljava/lang/String;
    return-object v0
.end method

.method protected initializeMandatoryFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method protected initializeOptionalFields()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "useClientSideCallbacks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v1, "applicationUserAgeGroup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v1, "maxVideosPerSession"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v1, "maxVideosPerIteration"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v1, "privateKey"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v1, "maxVideoLength"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v1, "itemName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v1, "itemCount"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    const-string v1, "SDKPluginType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    return-object v0
.end method

.method public setClientSideCallbacks(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 228
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "useClientSideCallbacks"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setItemCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "itemCount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "itemName"

    invoke-static {v0, v1, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "language"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setMaxVideoLength(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "maxVideoLength"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public setOfferwallCustomParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "owCustomParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->convertCustomParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mOfferwallCustomParams:Ljava/util/Map;

    .line 257
    return-void
.end method

.method public setPluginType(Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # Ljava/lang/String;

    .prologue
    .line 244
    if-eqz p1, :cond_1

    .line 245
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

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "SDKPluginType"

    invoke-static {v0, v1, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_1
    return-void
.end method

.method public setPrivateKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "privateKey"

    invoke-static {v0, v1, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public setRewardedVideoCustomParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "rvCustomParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->convertCustomParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mRewardedVideoCustomParams:Ljava/util/Map;

    .line 253
    return-void
.end method

.method setUserAgeGroup(I)V
    .locals 3
    .param p1, "age"    # I

    .prologue
    .line 192
    const-string v0, "0"

    .line 194
    .local v0, "ageGroup":Ljava/lang/String;
    const/16 v1, 0xd

    if-lt p1, v1, :cond_1

    const/16 v1, 0x11

    if-gt p1, v1, :cond_1

    .line 195
    const-string v0, "1"

    .line 212
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "applicationUserAgeGroup"

    invoke-static {v1, v2, v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void

    .line 196
    :cond_1
    const/16 v1, 0x12

    if-lt p1, v1, :cond_2

    const/16 v1, 0x14

    if-gt p1, v1, :cond_2

    .line 197
    const-string v0, "2"

    goto :goto_0

    .line 198
    :cond_2
    const/16 v1, 0x15

    if-lt p1, v1, :cond_3

    const/16 v1, 0x18

    if-gt p1, v1, :cond_3

    .line 199
    const-string v0, "3"

    goto :goto_0

    .line 200
    :cond_3
    const/16 v1, 0x19

    if-lt p1, v1, :cond_4

    const/16 v1, 0x22

    if-gt p1, v1, :cond_4

    .line 201
    const-string v0, "4"

    goto :goto_0

    .line 202
    :cond_4
    const/16 v1, 0x23

    if-lt p1, v1, :cond_5

    const/16 v1, 0x2c

    if-gt p1, v1, :cond_5

    .line 203
    const-string v0, "5"

    goto :goto_0

    .line 204
    :cond_5
    const/16 v1, 0x2d

    if-lt p1, v1, :cond_6

    const/16 v1, 0x36

    if-gt p1, v1, :cond_6

    .line 205
    const-string v0, "6"

    goto :goto_0

    .line 206
    :cond_6
    const/16 v1, 0x37

    if-lt p1, v1, :cond_7

    const/16 v1, 0x40

    if-gt p1, v1, :cond_7

    .line 207
    const-string v0, "7"

    goto :goto_0

    .line 208
    :cond_7
    const/16 v1, 0x41

    if-le p1, v1, :cond_0

    const/16 v1, 0x78

    if-gt p1, v1, :cond_0

    .line 209
    const-string v0, "8"

    goto :goto_0
.end method

.method setUserGender(Ljava/lang/String;)V
    .locals 2
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "applicationUserGender"

    invoke-static {v0, v1, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method protected validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    const/4 v3, 0x0

    .line 453
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 455
    .local v1, "value":Ljava/lang/String;
    const-string v2, "applicationKey"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    invoke-direct {p0, v1, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateApplicationKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 467
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 458
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v2, "userId"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-direct {p0, v1, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateUserId(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 461
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 463
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 464
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method protected validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    const/4 v4, 0x0

    .line 298
    :try_start_0
    const-string v3, "maxVideosPerSession"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 300
    .local v1, "maxVideos":I
    invoke-virtual {p0, v1, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateMaxVideos(ILcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 341
    .end local v1    # "maxVideos":I
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string v3, "maxVideosPerIteration"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 309
    .local v2, "value":Ljava/lang/String;
    const-string v3, "useClientSideCallbacks"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateClientSideCallbacks(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 335
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 337
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 312
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v3, "applicationUserGender"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateGender(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 338
    .end local v2    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v3, "applicationUserAgeGroup"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 316
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateAgeGroup(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 318
    :cond_4
    const-string v3, "language"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 319
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateLanguage(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 321
    :cond_5
    const-string v3, "maxVideoLength"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 322
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateMaxVideoLength(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 324
    :cond_6
    const-string v3, "privateKey"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 325
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validatePrivateKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 327
    :cond_7
    const-string v3, "itemName"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 328
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateItemName(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 330
    :cond_8
    const-string v3, "itemCount"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateItemCount(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
