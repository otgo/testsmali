.class Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
.super Lcom/supersonic/mediationsdk/AbstractAdapter;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialApi;
.implements Lcom/supersonic/mediationsdk/sdk/OfferwallApi;
.implements Lcom/supersonicads/sdk/listeners/OnOfferWallListener;


# static fields
.field private static mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;


# instance fields
.field private final ITEM_SIGNATURE:Ljava/lang/String;

.field private final SDK_PLUGIN_TYPE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

.field private mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

.field private mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

.field private mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

.field private mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "providerUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "1.1.3"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->VERSION:Ljava/lang/String;

    .line 42
    const-string v0, "timestamp"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->TIMESTAMP:Ljava/lang/String;

    .line 43
    const-string v0, "itemSignature"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->ITEM_SIGNATURE:Ljava/lang/String;

    .line 44
    const-string v0, "SDKPluginType"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->SDK_PLUGIN_TYPE:Ljava/lang/String;

    .line 46
    const-class v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;-><init>()V

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    .line 68
    invoke-virtual {p0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->setInterstitialSupport(Z)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->setOfferwallSupport(Z)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonicads/sdk/SSAPublisher;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonicads/sdk/SSAPublisher;)Lcom/supersonicads/sdk/SSAPublisher;
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
    .param p1, "x1"    # Lcom/supersonicads/sdk/SSAPublisher;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/OfferwallListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelTimer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/PlacementsHolder;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mPlacementHolder:Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getRewardedVideoExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
    .param p1, "x1"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->setRVInitStatus(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->setRVInitStatus(Z)V

    return-void
.end method

.method private addItemNameCountSignature(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    .line 202
    .local v0, "config":Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getItemName()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "itemName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getItemCount()I

    move-result v2

    .line 204
    .local v2, "itemCount":I
    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getPrivateKey()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "privateKey":Ljava/lang/String;
    const/4 v5, 0x1

    .line 208
    .local v5, "shouldAddSignature":Z
    invoke-static {v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 209
    const/4 v5, 0x0

    .line 213
    :goto_0
    invoke-static {v4}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 214
    const/4 v5, 0x0

    .line 216
    :cond_0
    const/4 v7, -0x1

    if-ne v2, v7, :cond_3

    .line 217
    const/4 v5, 0x0

    .line 222
    :goto_1
    if-eqz v5, :cond_1

    .line 223
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getCurrentTimestamp()I

    move-result v6

    .line 224
    .local v6, "timestamp":I
    const-string v7, "timestamp"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v7, "itemSignature"

    invoke-direct {p0, v6, v3, v2, v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->createItemSig(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v0    # "config":Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    .end local v2    # "itemCount":I
    .end local v3    # "itemName":Ljava/lang/String;
    .end local v4    # "privateKey":Ljava/lang/String;
    .end local v5    # "shouldAddSignature":Z
    .end local v6    # "timestamp":I
    :cond_1
    :goto_2
    return-void

    .line 211
    .restart local v0    # "config":Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    .restart local v2    # "itemCount":I
    .restart local v3    # "itemName":Ljava/lang/String;
    .restart local v4    # "privateKey":Ljava/lang/String;
    .restart local v5    # "shouldAddSignature":Z
    :cond_2
    const-string v7, "itemName"

    invoke-virtual {p1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v0    # "config":Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    .end local v2    # "itemCount":I
    .end local v3    # "itemName":Ljava/lang/String;
    .end local v4    # "privateKey":Ljava/lang/String;
    .end local v5    # "shouldAddSignature":Z
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v7

    sget-object v8, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":addItemNameCountSignature"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "config":Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    .restart local v2    # "itemCount":I
    .restart local v3    # "itemName":Ljava/lang/String;
    .restart local v4    # "privateKey":Ljava/lang/String;
    .restart local v5    # "shouldAddSignature":Z
    :cond_3
    :try_start_1
    const-string v7, "itemCount"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private createItemSig(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "timestamp"    # I
    .param p2, "itemName"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createMinimumOfferCommissionSig(DLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "min"    # D
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createUserCreationDateSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userid"    # Ljava/lang/String;
    .param p2, "uCreationDate"    # Ljava/lang/String;
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGenenralExtraParams()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    .line 99
    .local v1, "config":Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getUserAgeGroup()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "ageGroup":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    const-string v5, "applicationUserAgeGroup"

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getUserGender()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "uGender":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    const-string v5, "applicationUserGender"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getPluginType()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "pluginType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    const-string v5, "SDKPluginType"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_2
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
    .locals 1
    .param p0, "providerName"    # Ljava/lang/String;
    .param p1, "providerUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .line 61
    :cond_0
    sget-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    return-object v0
.end method

.method private getInterstitialExtraParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v0

    .line 165
    .local v0, "isExtraParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method private getOfferwallExtraParams()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v4

    .line 176
    .local v4, "owExtraParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    .line 179
    .local v1, "config":Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "language":Ljava/lang/String;
    invoke-static {v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 181
    const-string v5, "language"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getClientSideCallbacks()Z

    move-result v0

    .line 186
    .local v0, "clientSideCallbacks":Z
    const-string v5, "useClientSideCallbacks"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getOfferwallCustomParams()Ljava/util/Map;

    move-result-object v2

    .line 190
    .local v2, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 191
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 193
    :cond_1
    invoke-direct {p0, v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->addItemNameCountSignature(Ljava/util/HashMap;)V

    .line 195
    return-object v4
.end method

.method private getRewardedVideoExtraParams()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v5

    .line 127
    .local v5, "rvExtraParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    .line 130
    .local v1, "config":Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "language":Ljava/lang/String;
    invoke-static {v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 132
    const-string v6, "language"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getMaxVideoLength()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "maxVideoLength":Ljava/lang/String;
    invoke-static {v4}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 138
    const-string v6, "maxVideoLength"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "campaignId":Ljava/lang/String;
    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 144
    sget-object v6, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->CAMPAIGN_ID:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_2
    invoke-direct {p0, v5}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->addItemNameCountSignature(Ljava/util/HashMap;)V

    .line 150
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getRewardedVideoCustomParams()Ljava/util/Map;

    move-result-object v2

    .line 151
    .local v2, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 152
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 154
    :cond_3
    return-object v5
.end method


# virtual methods
.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxVideosPerIteration()I
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getMaxVideosPerIteration()I

    move-result v0

    return v0
.end method

.method public getOfferwallCredits()V
    .locals 5

    .prologue
    .line 582
    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v2, :cond_0

    .line 583
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "userId":Ljava/lang/String;
    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":getOfferwallCredits(appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 589
    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v2, v0, v1, p0}, Lcom/supersonicads/sdk/SSAPublisher;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 592
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    return-void

    .line 591
    :cond_0
    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v3, "Please call init before calling getOfferwallCredits"

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "1.1.3"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitInterstitialEvent(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getInterstitialExtraParams()Ljava/util/HashMap;

    move-result-object v5

    .line 498
    .local v5, "supersonicConfig":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":initInterstitial(appKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extraParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 502
    new-instance v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 563
    return-void
.end method

.method public initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 249
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitOfferwallEvent(Ljava/lang/String;)V

    .line 251
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":initOfferwall(appKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 256
    new-instance v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":initOfferwall(userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    const-string v2, "Offerwall init failed"

    invoke-static {v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitRewardedVideoEvent(Ljava/lang/String;)V

    .line 277
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":initRewardedVideo(userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 279
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->reset()V

    .line 281
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-virtual {p0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->validateConfigBeforeInitAndCallInitFailForInvalid(Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 282
    .local v0, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getMaxVideos()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->setMaxVideo(I)V

    .line 288
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-virtual {p0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->startTimer(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 289
    new-instance v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isInterstitialAdAvailable()Z
    .locals 3

    .prologue
    .line 481
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":isInterstitialAdAvailable()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 483
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/supersonicads/sdk/SSAPublisher;->isInterstitialAdAvailable()Z

    move-result v0

    .line 488
    :goto_0
    return v0

    .line 486
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "Please call init before calling isInterstitialAdAvailable"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 488
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOfferwallAvailable()Z
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .locals 4

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v0

    .line 436
    .local v0, "availability":Z
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":isRewardedVideoAvailable():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return v0

    .line 434
    .end local v0    # "availability":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onGetOWCreditsFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 663
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v1, :cond_0

    .line 664
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 665
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onGetOfferwallCreditsFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 667
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-void
.end method

.method public onOWAdClosed()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallClosed()V

    .line 658
    :cond_0
    return-void
.end method

.method public onOWAdCredited(IIZ)Z
    .locals 1
    .param p1, "credits"    # I
    .param p2, "totalCredits"    # I
    .param p3, "totalCreditsFlag"    # Z

    .prologue
    .line 651
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 646
    return-void
.end method

.method public onOWShowFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 635
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v1, :cond_0

    .line 636
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 637
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 640
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-void
.end method

.method public onOWShowSuccess()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallOpened()V

    .line 630
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 393
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 395
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/supersonicads/sdk/SSAPublisher;->onPause(Landroid/app/Activity;)V

    .line 397
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 415
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 417
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/supersonicads/sdk/SSAPublisher;->onResume(Landroid/app/Activity;)V

    .line 420
    :cond_0
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 425
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":release()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 427
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/supersonicads/sdk/SSAPublisher;->release(Landroid/app/Activity;)V

    .line 429
    :cond_0
    return-void
.end method

.method public setAge(I)V
    .locals 3
    .param p1, "age"    # I

    .prologue
    .line 401
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->setUserAgeGroup(I)V

    .line 402
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setAge(age:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 403
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 3
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->setUserGender(Ljava/lang/String;)V

    .line 408
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setGender(gender:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 410
    return-void
.end method

.method public setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V
    .locals 0
    .param p1, "isListener"    # Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    .line 477
    return-void
.end method

.method public setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V
    .locals 0
    .param p1, "owListener"    # Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    .line 598
    return-void
.end method

.method public setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 0
    .param p1, "rewardedVideoManager"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    .line 445
    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 567
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":showInterstitial()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 569
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/supersonicads/sdk/SSAPublisher;->showInterstitial()V

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "Please call init before calling showInterstitial"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showOfferwall()V
    .locals 6

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getOfferwallExtraParams()Ljava/util/HashMap;

    move-result-object v1

    .line 605
    .local v1, "offerwallExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v3

    check-cast v3, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "applicationKey":Ljava/lang/String;
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v3

    check-cast v3, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "userId":Ljava/lang/String;
    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":showOfferwall(appKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extraParams:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 612
    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v3, :cond_0

    .line 613
    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v3, v0, v2, v1, p0}, Lcom/supersonicads/sdk/SSAPublisher;->showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 616
    :goto_0
    return-void

    .line 615
    :cond_0
    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v4, "Please call init before calling showOfferwall"

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v4, v5}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showRewardedVideo()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 4
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyShowRewardedVideoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v1, :cond_1

    .line 457
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":showRewardedVideo(placement:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 459
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v1}, Lcom/supersonicads/sdk/SSAPublisher;->showRewardedVideo()V

    .line 460
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-virtual {v1, p1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->setPlacementName(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->increaseCurrentVideo()Z

    move-result v0

    .line 464
    .local v0, "shouldNotify":Z
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 465
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v2

    invoke-interface {v1, v2, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 470
    .end local v0    # "shouldNotify":Z
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "Please call init before calling showRewardedVideo"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method
