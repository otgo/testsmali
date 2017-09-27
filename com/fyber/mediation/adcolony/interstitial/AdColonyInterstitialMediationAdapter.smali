.class public Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "AdColonyInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
        ">;",
        "Lcom/jirbo/adcolony/AdColonyAdListener;"
    }
.end annotation


# static fields
.field private static final ERROR_NOT_SHOWN:Ljava/lang/String; = "Not Shown"

.field private static final ERROR_NO_FILL:Ljava/lang/String; = "No Fill"

.field private static final ERROR_NO_VIDEO_AVAILABLE:Ljava/lang/String; = "No Video Available"


# instance fields
.field private interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

.field private mActivityRef:Landroid/app/Activity;

.field private mAdAvailabilityForZoneId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentZoneId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasAdStarted:Z

.field private mInterstitialZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdColonyInterstitialAvailable:Z

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
.method public constructor <init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;Landroid/app/Activity;)V
    .locals 2
    .param p1, "adapter"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "zoneIdsInterstitial":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 33
    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mHasAdStarted:Z

    .line 34
    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mIsAdColonyInterstitialAvailable:Z

    .line 46
    iput-object p3, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mActivityRef:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mInterstitialZoneIds:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdAvailabilityForZoneId:Ljava/util/HashMap;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 54
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;-><init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->initInterstitial()V

    return-void
.end method

.method private initInterstitial()V
    .locals 6

    .prologue
    .line 127
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdAvailable()V

    .line 150
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ad is not ready. Get a new one."

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mActivityRef:Landroid/app/Activity;

    invoke-static {v3}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 135
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mInterstitialZoneIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 136
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 139
    :cond_1
    const/4 v1, 0x0

    .line 140
    .local v1, "tZoneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mInterstitialZoneIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, "zoneId":Ljava/lang/String;
    iget-object v3, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 142
    move-object v1, v2

    .line 147
    .end local v2    # "zoneId":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got zone id for interstitials: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mCurrentZoneId:Ljava/lang/String;

    .line 149
    new-instance v3, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v3, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    goto :goto_0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mHasAdStarted:Z

    .line 82
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$2;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$2;-><init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdAvailabilityForZoneId:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mCurrentZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdAvailabilityForZoneId:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mCurrentZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdAvailable()V

    .line 92
    :cond_0
    return-void
.end method

.method public maintainAvailability(ZLjava/lang/String;)V
    .locals 2
    .param p1, "available"    # Z
    .param p2, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mIsAdColonyInterstitialAvailable:Z

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting ad available"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->initInterstitial()V

    .line 158
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdAvailable()V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdAvailabilityForZoneId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad is not available"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->noFill()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "No Fill"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 112
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 113
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$3;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$3;-><init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->notShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mHasAdStarted:Z

    if-nez v0, :cond_1

    .line 107
    const-string v0, "Not Shown"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->fireCloseEvent()V

    goto :goto_0
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->fireImpressionEvent()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mHasAdStarted:Z

    .line 99
    return-void
.end method

.method protected show(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {p1}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 65
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show()V

    .line 67
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdAvailabilityForZoneId:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mCurrentZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialVideo:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "interstitialVideo is null"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    const-string v1, "No Video Available"

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    goto :goto_0
.end method
