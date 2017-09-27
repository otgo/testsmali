.class public Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;
.super Lcom/sponsorpay/mediation/SPMediationAdapter;
.source "AppLovinMediationAdapter.java"


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "AppLovin"

.field private static final ADAPTER_VERSION:Ljava/lang/String; = "6.0.0_r1"

.field private static final SDK_KEY:Ljava/lang/String; = "applovin.sdk.key"

.field public static final TAG:Ljava/lang/String; = "AppLovinAdapter"

.field private static final VERBOSE_LOGGING_KEY:Ljava/lang/String; = "verbose.logging"


# instance fields
.field private mInterstitialAdapter:Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;

.field private mVideoAdapter:Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;-><init>()V

    return-void
.end method

.method private getMetadata(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 96
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 103
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 106
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    return-object v2

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getValueFromAppMetadata(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->getMetadata(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "applovin.sdk.key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "retrievedValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getVerboseLoggingFromConfig()Z
    .locals 4

    .prologue
    .line 87
    const-string v0, "AppLovin"

    const-string v1, "verbose.logging"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getInterstitialMediationAdapter()Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->mInterstitialAdapter:Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "AppLovin"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "6.0.0_r1"

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->mVideoAdapter:Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public startAdapter(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    const-string v3, "AppLovinAdapter"

    const-string v4, "Starting AppLovin adapter - SDK version 6.0.0"

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->getValueFromAppMetadata(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "sdkKey":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->getVerboseLoggingFromConfig()Z

    move-result v2

    .line 44
    .local v2, "verboseLogging":Z
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    new-instance v1, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    .line 46
    .local v1, "settings":Lcom/applovin/sdk/AppLovinSdkSettings;
    invoke-virtual {v1, v2}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 49
    invoke-static {v0, v1, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    .line 50
    new-instance v3, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;

    invoke-direct {v3, p0, p1}, Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->mInterstitialAdapter:Lcom/sponsorpay/mediation/applovin/interstitial/AppLovinIntersitialMediationAdapter;

    .line 52
    new-instance v3, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;

    invoke-direct {v3, p0, p1}, Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;-><init>(Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/sponsorpay/mediation/applovin/AppLovinMediationAdapter;->mVideoAdapter:Lcom/sponsorpay/mediation/applovin/mbe/AppLovinVideoMediationAdapter;

    .line 53
    const/4 v3, 0x1

    .line 58
    .end local v1    # "settings":Lcom/applovin/sdk/AppLovinSdkSettings;
    :goto_0
    return v3

    .line 55
    :cond_0
    const-string v3, "AppLovinAdapter"

    const-string v4, "SDK key value is not set in the AndroidManifest file of your application. Adapter won\'t start"

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v3, 0x0

    goto :goto_0
.end method
