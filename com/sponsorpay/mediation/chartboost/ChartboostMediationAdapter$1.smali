.class Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;
.super Ljava/lang/Object;
.source "ChartboostMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->startAdapter(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSignature:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    iput-object p2, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->val$appSignature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 82
    iget-object v4, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->val$appId:Ljava/lang/String;

    iget-object v6, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->val$appSignature:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->setImpressionsUseActivities(Z)V

    .line 85
    iget-object v4, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 86
    iget-object v4, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 87
    iget-object v4, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 90
    sget-object v4, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkFyber:Lcom/chartboost/sdk/Chartboost$CBFramework;

    sget-object v5, Lcom/sponsorpay/SponsorPay;->RELEASE_VERSION_STRING:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Chartboost;->setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V

    .line 93
    sget-object v4, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkFyber:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Chartboost$CBFramework;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sponsorpay/SponsorPay;->RELEASE_VERSION_STRING:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Chartboost;->setMediation(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v4, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    iget-object v5, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-direct {v4, v5}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;-><init>(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)V

    invoke-static {v4}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 99
    iget-object v4, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    const-string v5, "LogLevel"

    invoke-static {v4, v5}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$000(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "logLevel":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 109
    .local v2, "lvl":Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    :goto_0
    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    .line 112
    iget-object v4, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v4}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$100(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v4}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$200(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V

    .line 116
    :try_start_1
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sponsorpay/credentials/SPCredentials;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->setCustomId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :goto_2
    iget-object v3, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    new-instance v4, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    iget-object v5, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-direct {v4, v5}, Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)V

    invoke-static {v3, v4}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$302(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    .line 127
    iget-object v3, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    new-instance v4, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    iget-object v5, p0, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;

    invoke-direct {v4, v5}, Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;-><init>(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;)V

    invoke-static {v3, v4}, Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;->access$402(Lcom/sponsorpay/mediation/chartboost/ChartboostMediationAdapter;Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;)Lcom/sponsorpay/mediation/chartboost/mbe/ChartboostVideoMediationAdapter;

    .line 128
    return-void

    .line 103
    .end local v2    # "lvl":Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_3
    const-string v4, "ChartboostAdapter"

    const-string v5, "No or not proper value has been passed to \'LogLevel\' setting key, setting ALL by default."

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v2, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .restart local v2    # "lvl":Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    goto :goto_0

    .line 112
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 117
    :catch_1
    move-exception v0

    .line 119
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    const-string v3, "ChartboostAdapter"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v3, "ChartboostAdapter"

    const-string v4, "Default Chartboost UserID will be used"

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 103
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "lvl":Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    :catch_2
    move-exception v0

    goto :goto_3
.end method
