.class public Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;
.super Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
.source "ChartboostInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/sponsorpay/mediation/chartboost/interstitial/IFyberChartboostInterstitial;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter",
        "<",
        "Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;",
        ">;",
        "Lcom/sponsorpay/mediation/chartboost/interstitial/IFyberChartboostInterstitial;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdHasBeenClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 28
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    check-cast v0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->shouldCacheInterstitials()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->checkForInterstitial()V

    .line 31
    :cond_0
    return-void
.end method

.method private checkForInterstitial()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "fyber_interstitial"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->checkForInterstitial()V

    .line 36
    return-void
.end method

.method public fyberFireClickEvent()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireClickEvent()V

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 84
    return-void
.end method

.method public fyberFireCloseEvent()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireCloseEvent()V

    .line 89
    return-void
.end method

.method public fyberFireImpressionEvent()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireImpressionEvent()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 70
    return-void
.end method

.method public fyberFireShowErrorEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public fyberFireValidationErrorEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public fyberSetAdAvailable()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->setAdAvailable()V

    .line 63
    return-void
.end method

.method protected show(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 44
    const-string v0, "fyber_interstitial"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "fyber_interstitial"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    .line 48
    :cond_0
    sget-object v0, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Chartboost.hasInterstitial(fyber_interstitial) returned `false`;"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "Ad has not been cached yet."

    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method
