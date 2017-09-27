.class public Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;
.super Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
.source "AdColonyVideoMediationAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdListener;
.implements Lcom/jirbo/adcolony/AdColonyV4VCListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter",
        "<",
        "Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;",
        ">;",
        "Lcom/jirbo/adcolony/AdColonyV4VCListener;",
        "Lcom/jirbo/adcolony/AdColonyAdListener;"
    }
.end annotation


# static fields
.field private static final CONFIRMATION_DIALOG:Ljava/lang/String; = "with.confirmation.dialog"


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
.method public constructor <init>(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;Landroid/app/Activity;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;
    .param p3, "act"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "pZoneIdsVideo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mIsAdColonyVideoAvailabile:Z

    .line 45
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V

    .line 46
    invoke-direct {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->shouldShowConfirmationDialog()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    .line 47
    iput-object p2, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    .line 49
    iput-object p3, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mActivityRef:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method private initRewardedVideo()V
    .locals 5

    .prologue
    .line 114
    iget-object v2, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 115
    iget-object v2, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 118
    :cond_0
    const/4 v1, 0x0

    .line 119
    .local v1, "tZoneId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, "mVideoZoneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    move-object v1, v0

    .line 126
    .end local v0    # "mVideoZoneId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got zone id for rewarded video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mActivityRef:Landroid/app/Activity;

    invoke-static {v2}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 128
    new-instance v2, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v2, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v2

    iput-object v2, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 129
    return-void
.end method

.method private shouldShowConfirmationDialog()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "with.confirmation.dialog"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public maintainAvailability(ZLjava/lang/String;)V
    .locals 2
    .param p1, "available"    # Z
    .param p2, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mIsAdColonyVideoAvailabile:Z

    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Video is not available"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
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
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->notifyVideoError()V

    .line 96
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 97
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->pause()V

    .line 98
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->notifyCloseEngagement()V

    goto :goto_0
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->notifyVideoStarted()V

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
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->setVideoPlayed()V

    .line 86
    :cond_0
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p1}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 71
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V

    .line 72
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->notifyVideoStarted()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->notifyVideoError()V

    goto :goto_0
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->initRewardedVideo()V

    .line 58
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mIsAdColonyVideoAvailabile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationSuccess:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;)V

    .line 60
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    iget-object v1, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withConfirmationDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 63
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationNoVideoAvailable:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;)V

    goto :goto_0
.end method
