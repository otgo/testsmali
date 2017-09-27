.class Lcom/warlings2/googleservices$5;
.super Ljava/lang/Object;
.source "googleservices.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warlings2/googleservices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/warlings2/googleservices;


# direct methods
.method constructor <init>(Lcom/warlings2/googleservices;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/warlings2/googleservices$5;->this$0:Lcom/warlings2/googleservices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClosed()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;)V
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardAmount()I

    .line 363
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/warlings2/googleservices;->give_reward(II)V

    .line 364
    return-void
.end method

.method public onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorCode()I

    move-result v0

    .line 324
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorMessage()Ljava/lang/String;

    .line 325
    const/16 v1, 0x1fe

    if-ne v0, v1, :cond_0

    .line 328
    :cond_0
    return-void
.end method

.method public onRewardedVideoInitSuccess()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public onVideoAvailabilityChanged(Z)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onVideoEnd()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onVideoStart()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method
