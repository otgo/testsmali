.class public Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;
.super Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
.source "AppLovinVideoMediationAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
        "<",
        "Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;",
        ">;",
        "Lcom/applovin/sdk/AppLovinAdRewardListener;",
        "Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;",
        "Lcom/applovin/sdk/AppLovinAdDisplayListener;"
    }
.end annotation


# instance fields
.field private mFullyWatched:Z

.field private mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

.field private mRewardVerified:Z


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "appLovinMediationAdapter"    # Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 21
    iput-boolean v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 22
    iput-boolean v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 27
    invoke-static {p2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Landroid/content/Context;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 28
    iget-object v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0, p3}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->setUserIdentifier(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 104
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-boolean v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->setVideoPlayed()V

    .line 114
    :cond_0
    iput-boolean v1, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 115
    iput-boolean v1, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 117
    iget-object v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->notifyCloseEngagement()V

    .line 119
    return-void
.end method

.method public startPrecaching()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0, p1, p0, p0, p0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->notifyVideoStarted()V

    .line 48
    :cond_0
    return-void
.end method

.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->notifyCloseEngagement()V

    .line 85
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "response"    # Ljava/util/Map;

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 59
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "response"    # Ljava/util/Map;

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 67
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "response"    # Ljava/util/Map;

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 74
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "errorCode"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 80
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 91
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "percentViewed"    # D
    .param p4, "fullyWatched"    # Z

    .prologue
    .line 97
    iput-boolean p4, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 98
    return-void
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 37
    iput-boolean v1, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 38
    iput-boolean v1, p0, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 39
    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    goto :goto_0
.end method
