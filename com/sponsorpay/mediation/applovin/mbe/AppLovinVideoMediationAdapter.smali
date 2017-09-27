.class public Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;
.super Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
.source "AppLovinVideoMediationAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter",
        "<",
        "Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;",
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
.method public constructor <init>(Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;)V
    .locals 3
    .param p1, "appLovinMediationAdapter"    # Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 24
    iput-boolean v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 25
    iput-boolean v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 30
    invoke-static {p2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Landroid/content/Context;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 31
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "userId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v1, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->setUserIdentifier(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 106
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "arg0"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->setVideoPlayed()V

    .line 116
    :cond_0
    iput-boolean v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 117
    iput-boolean v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 119
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->notifyCloseEngagement()V

    .line 121
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0, p1, p0, p0, p0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->notifyVideoStarted()V

    .line 53
    :cond_0
    return-void
.end method

.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->notifyCloseEngagement()V

    .line 87
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "response"    # Ljava/util/Map;

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 61
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "response"    # Ljava/util/Map;

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 69
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "response"    # Ljava/util/Map;

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 76
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "errorCode"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 82
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 93
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "percentViewed"    # D
    .param p4, "fullyWatched"    # Z

    .prologue
    .line 99
    iput-boolean p4, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 100
    return-void
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mIncentivizedAd:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationSuccess:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;)V

    .line 42
    iput-boolean v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mRewardVerified:Z

    .line 43
    iput-boolean v1, p0, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;->mFullyWatched:Z

    .line 44
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationNoVideoAvailable:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    goto :goto_0
.end method
