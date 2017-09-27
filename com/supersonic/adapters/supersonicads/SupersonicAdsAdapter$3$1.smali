.class Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;
.super Ljava/lang/Object;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Lcom/supersonicads/sdk/listeners/OnInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;


# direct methods
.method constructor <init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClicked()V

    .line 551
    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClosed()V

    .line 557
    :cond_0
    return-void
.end method

.method public onInterstitialAvailability(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 527
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAvailability(Z)V

    .line 530
    :cond_0
    return-void
.end method

.method public onInterstitialInitFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 518
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 519
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 520
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 523
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialInitSuccess()V

    .line 514
    :cond_0
    return-void
.end method

.method public onInterstitialShowFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 534
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 535
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 537
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v1, v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 539
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-void
.end method

.method public onInterstitialShowSuccess()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3$1;->this$1:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    iget-object v0, v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowSuccess()V

    .line 545
    :cond_0
    return-void
.end method
