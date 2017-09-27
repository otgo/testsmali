.class public Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
.super Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
.source "AdColonyVideoMediationAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyV4VCListener;
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
        "<",
        "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
        ">;",
        "Lcom/jirbo/adcolony/AdColonyV4VCListener;",
        "Lcom/jirbo/adcolony/AdColonyAdListener;"
    }
.end annotation


# instance fields
.field private mActivityRef:Landroid/app/Activity;

.field private mIsAdColonyVideoAvailabile:Z

.field private mShouldShowConfirmationDialog:Ljava/lang/Boolean;

.field private mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

.field private mVideoZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;ZLandroid/app/Activity;)V
    .locals 1
    .param p1, "adapter"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
    .param p3, "shouldShowConfirmationDialog"    # Z
    .param p4, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "pZoneIdsVideo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mIsAdColonyVideoAvailabile:Z

    .line 42
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V

    .line 43
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    .line 44
    iput-object p2, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    .line 46
    iput-object p4, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mActivityRef:Landroid/app/Activity;

    .line 47
    return-void
.end method

.method private initRewardedVideo()V
    .locals 6

    .prologue
    .line 114
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 115
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 118
    :cond_0
    const/4 v2, 0x0

    .line 119
    .local v2, "tZoneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    .local v1, "mVideoZoneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    move-object v2, v1

    .line 126
    .end local v1    # "mVideoZoneId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got zone id for rewarded video: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mActivityRef:Landroid/app/Activity;

    invoke-static {v3}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 128
    new-instance v3, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v3, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 129
    return-void
.end method


# virtual methods
.method public maintainAvailability(ZLjava/lang/String;)V
    .locals 2
    .param p1, "available"    # Z
    .param p2, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mIsAdColonyVideoAvailabile:Z

    .line 133
    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Video is not available"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    return-void
.end method

.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->noFill()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyVideoError()V

    .line 96
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 97
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->initRewardedVideo()V

    .line 98
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyCloseEngagement()V

    goto :goto_0
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyVideoStarted()V

    .line 105
    :cond_0
    return-void
.end method

.method public onAdColonyV4VCReward(Lcom/jirbo/adcolony/AdColonyV4VCReward;)V
    .locals 1
    .param p1, "reward"    # Lcom/jirbo/adcolony/AdColonyV4VCReward;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->setVideoPlayed()V

    .line 86
    :cond_0
    return-void
.end method

.method public startPrecaching()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-static {p1}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V

    .line 69
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyVideoStarted()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyVideoError()V

    goto :goto_0
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->initRewardedVideo()V

    .line 55
    iget-boolean v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mIsAdColonyVideoAvailabile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 57
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    iget-object v1, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withConfirmationDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 60
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_0
.end method
