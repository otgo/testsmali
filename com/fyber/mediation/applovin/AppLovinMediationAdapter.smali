.class public Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "AppLovinMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x3
    name = "AppLovin"
    version = "6.1.4-r1"
.end annotation


# static fields
.field private static final SDK_KEY:Ljava/lang/String; = "applovin.sdk.key"

.field public static final TAG:Ljava/lang/String;

.field public static final VERBOSE_LOGGING_KEY:Ljava/lang/String; = "verbose.logging"


# instance fields
.field private configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialAdapter:Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

.field private mVideoAdapter:Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    return-void
.end method

.method private getMetadata(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 101
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 104
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSdkKeyFromAppMetadata(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getMetadata(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "applovin.sdk.key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 110
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
    .line 86
    iget-object v0, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->configs:Ljava/util/Map;

    const-string v1, "verbose.logging"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->mInterstitialAdapter:Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

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
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "AppLovin"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "6.1.4-r1"

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getVideoMediationAdapter()Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->mVideoAdapter:Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;

    return-object v0
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p2, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->configs:Ljava/util/Map;

    .line 40
    sget-object v3, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Starting AppLovin adapter..."

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getSdkKeyFromAppMetadata(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "sdkKey":Ljava/lang/String;
    invoke-direct {p0}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getVerboseLoggingFromConfig()Z

    move-result v2

    .line 44
    .local v2, "verboseLogging":Z
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    new-instance v1, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    .line 46
    .local v1, "settings":Lcom/applovin/sdk/AppLovinSdkSettings;
    invoke-virtual {v1, v2}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 48
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 49
    invoke-static {v1, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    .line 50
    new-instance v3, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

    invoke-direct {v3, p0, p1}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->mInterstitialAdapter:Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

    .line 51
    new-instance v3, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;

    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4}, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;-><init>(Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->mVideoAdapter:Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;

    .line 52
    const/4 v3, 0x1

    .line 57
    .end local v1    # "settings":Lcom/applovin/sdk/AppLovinSdkSettings;
    :goto_0
    return v3

    .line 55
    :cond_0
    sget-object v3, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->TAG:Ljava/lang/String;

    const-string v4, "SDK key value is not set in the AndroidManifest file of your application. Adapter won\'t start"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v3, 0x0

    goto :goto_0
.end method
