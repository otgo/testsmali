.class Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;
.super Ljava/lang/Object;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;


# direct methods
.method constructor <init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRVAdClosed()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdClosed(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 376
    :cond_0
    return-void
.end method

.method public onRVAdCredited(I)V
    .locals 3
    .param p1, "amount"    # I

    .prologue
    .line 366
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1100(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v0

    .line 368
    .local v0, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v1, v0, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 370
    .end local v0    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :cond_0
    return-void
.end method

.method public onRVAdOpened()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdOpened(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 382
    :cond_0
    return-void
.end method

.method public onRVGeneric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 354
    return-void
.end method

.method public onRVInitFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$900(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Z)V

    .line 343
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1000(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V

    .line 344
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 346
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v1, v0, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 349
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-void
.end method

.method public onRVInitSuccess(Lcom/supersonicads/sdk/data/AdUnitsReady;)V
    .locals 7
    .param p1, "aur"    # Lcom/supersonicads/sdk/data/AdUnitsReady;

    .prologue
    const/4 v0, 0x1

    .line 318
    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v4, v4, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$700(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V

    .line 319
    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v4, v4, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v4, v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$800(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Z)V

    .line 321
    const/4 v2, 0x0

    .line 324
    .local v2, "numOfAdUnits":I
    :try_start_0
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 328
    :goto_0
    if-lez v2, :cond_1

    .line 330
    .local v0, "availability":Z
    :goto_1
    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v4, v4, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v3

    .line 332
    .local v3, "shouldNotify":Z
    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v4, v4, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 333
    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v4, v4, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v5, v5, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v4, v5}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoInitSuccess(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 335
    if-eqz v3, :cond_0

    .line 336
    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v4, v4, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v5, v5, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v5}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v5

    iget-object v6, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v6, v6, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v4, v5, v6}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 338
    :cond_0
    return-void

    .line 325
    .end local v0    # "availability":Z
    .end local v3    # "shouldNotify":Z
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v6, "onRVInitSuccess:parseInt()"

    invoke-virtual {v4, v5, v6, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 328
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onRVNoMoreOffers()V
    .locals 4

    .prologue
    .line 307
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$400(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V

    .line 308
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v0

    .line 310
    .local v0, "shouldNotify":Z
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 311
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v1, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoInitSuccess(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 312
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v2

    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v3, v3, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v1, v2, v3}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 314
    :cond_0
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildShowVideoFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 360
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    iget-object v2, v2, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v1, v0, v2}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 362
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-void
.end method
