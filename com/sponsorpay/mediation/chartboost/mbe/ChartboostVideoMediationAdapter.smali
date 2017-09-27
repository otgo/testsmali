.class public Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;
.super Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
.source "ChartboostVideoMediationAdapter.java"

# interfaces
.implements Lcom/sponsorpay/mediation/chartboost/mbe/IFyberChartboostMBE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter",
        "<",
        "Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;",
        ">;",
        "Lcom/sponsorpay/mediation/chartboost/mbe/IFyberChartboostMBE;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 26
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    check-cast v0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->shouldCacheRewardedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "fyber_rewarded_video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public fyberNotifyCloseEngagement()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->notifyCloseEngagement()V

    .line 76
    return-void
.end method

.method public fyberNotifyVideoError()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->notifyVideoError()V

    .line 71
    return-void
.end method

.method public fyberNotifyVideoStarted()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->notifyVideoStarted()V

    .line 66
    return-void
.end method

.method public fyberSendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;)V
    .locals 0
    .param p1, "result"    # Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;)V

    .line 61
    return-void
.end method

.method public fyberSetVideoPlayed()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->setVideoPlayed()V

    .line 81
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 46
    const-string v0, "fyber_rewarded_video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "fyber_rewarded_video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->notifyVideoError()V

    goto :goto_0
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setShouldPrefetchVideoContent(Z)V

    .line 37
    const-string v0, "fyber_rewarded_video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 38
    const-string v0, "fyber_rewarded_video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationSuccess:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;->sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;)V

    .line 42
    return-void

    .line 38
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationNoVideoAvailable:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    goto :goto_0
.end method
