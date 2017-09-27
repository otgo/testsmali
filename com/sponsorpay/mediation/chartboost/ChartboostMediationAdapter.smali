.class public Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;
.super Lcom/sponsorpay/mediation/SPMediationAdapter;
.source "ChartboostMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;
    }
.end annotation


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "Chartboost"

.field private static final ADAPTER_VERSION:Ljava/lang/String; = "5.5.3-r1"

.field public static final APP_ID_KEY:Ljava/lang/String; = "AppId"

.field public static final APP_SIGNATURE_KEY:Ljava/lang/String; = "AppSignature"

.field public static final AUTOCACHE_ENABLED_KEY:Ljava/lang/String; = "AutocacheEnabled"

.field public static final INT_CACHE_KEY:Ljava/lang/String; = "CacheInterstitials"

.field public static final LOCATION_INTERSTITIAL_DEFAULT:Ljava/lang/String; = "fyber_interstitial"

.field public static final LOCATION_REWARDED_VIDEO_DEFAULT:Ljava/lang/String; = "fyber_rewarded_video"

.field public static final LOG_LEVEL_KEY:Ljava/lang/String; = "LogLevel"

.field public static final RV_CACHE_KEY:Ljava/lang/String; = "CacheRewardedVideo"

.field private static final TAG:Ljava/lang/String; = "ChartboostAdapter"


# instance fields
.field private mCacheInterstitials:Z

.field private mCacheRewardedVideo:Z

.field private mHandler:Landroid/os/Handler;

.field private mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

.field private mVideoMediationAdapter:Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mCacheInterstitials:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mCacheRewardedVideo:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;
    .param p1, "x1"    # Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;
    .param p1, "x1"    # Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    return-object p1
.end method

.method private getBooleanParameter(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 182
    const-string v0, "Chartboost"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, p1, v1, v2}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private getStringParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v0, "Chartboost"

    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getInterstitialMediationAdapter()Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    if-nez v0, :cond_0

    .line 155
    const-string v0, "ChartboostAdapter"

    const-string v1, "Interstitial adapter is null"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mInterstitialMediationAdapter:Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "Chartboost"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "5.5.3-r1"

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    if-nez v0, :cond_0

    .line 147
    const-string v0, "ChartboostAdapter"

    const-string v1, "RV adapter is null"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mVideoMediationAdapter:Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public shouldCacheInterstitials()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mCacheInterstitials:Z

    return v0
.end method

.method public shouldCacheRewardedVideo()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mCacheRewardedVideo:Z

    return v0
.end method

.method public startAdapter(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string v3, "ChartboostAdapter"

    const-string v4, "Starting Chartboost adapter."

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "AppId"

    invoke-direct {p0, v3}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "appId":Ljava/lang/String;
    const-string v3, "AppSignature"

    invoke-direct {p0, v3}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "appSignature":Ljava/lang/String;
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const-string v3, "ChartboostAdapter"

    const-string v4, "Chartboost App ID is missing. Adapter won\'t start."

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return v2

    .line 69
    :cond_0
    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    const-string v3, "ChartboostAdapter"

    const-string v4, "Chartboost App Signature is missing. Adapter won\'t start."

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    const-string v3, "CacheRewardedVideo"

    invoke-direct {p0, v3, v2}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mCacheRewardedVideo:Z

    .line 76
    const-string v3, "CacheInterstitials"

    invoke-direct {p0, v3, v2}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mCacheInterstitials:Z

    .line 79
    iget-object v2, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;-><init>(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    const/4 v2, 0x1

    goto :goto_0
.end method
