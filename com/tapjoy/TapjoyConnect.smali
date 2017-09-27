.class public final Lcom/tapjoy/TapjoyConnect;
.super Ljava/lang/Object;
.source "TapjoyConnect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyConnect"

.field private static connectFlags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

.field private static tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

.field private static tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

.field private static tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

.field private static tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

.field private static tapjoyOffers:Lcom/tapjoy/TJCOffers;

.field private static tapjoyPoints:Lcom/tapjoy/TJPoints;

.field private static tapjoyVideo:Lcom/tapjoy/TapjoyVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 25
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    .line 26
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    .line 27
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    .line 28
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 29
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 30
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    .line 31
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

    .line 34
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
    .param p5, "notifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyException;
        }
    .end annotation

    .prologue
    .line 181
    .local p4, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    .line 183
    return-void
.end method

.method public static enableLogging(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 63
    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 64
    return-void
.end method

.method public static getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    if-nez v0, :cond_0

    .line 162
    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "TapjoyConnect"

    const-string v1, "ERROR -- call requestTapjoyConnect before any other Tapjoy methods"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    return-object v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    return v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)Z

    move-result v0

    return v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p4, "notifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 120
    const-string v0, "offers"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    .line 123
    :try_start_0
    new-instance v0, Lcom/tapjoy/TapjoyConnect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/TapjoyConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;
    :try_end_0
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    new-instance v0, Lcom/tapjoy/TJCOffers;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    .line 140
    new-instance v0, Lcom/tapjoy/TJPoints;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJPoints;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    .line 141
    new-instance v0, Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyFullScreenAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    .line 142
    new-instance v0, Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyDisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 143
    new-instance v0, Lcom/tapjoy/TapjoyVideo;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyVideo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 144
    new-instance v0, Lcom/tapjoy/TapjoyEvent;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyEvent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    .line 145
    new-instance v0, Lcom/tapjoy/TapjoyDailyRewardAd;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyDailyRewardAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    .line 150
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v6

    .line 127
    .local v6, "e":Lcom/tapjoy/TapjoyIntegrationException;
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntegrationException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz p4, :cond_0

    .line 129
    invoke-interface {p4}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    :cond_0
    move v0, v7

    .line 130
    goto :goto_0

    .line 132
    .end local v6    # "e":Lcom/tapjoy/TapjoyIntegrationException;
    :catch_1
    move-exception v6

    .line 134
    .local v6, "e":Lcom/tapjoy/TapjoyException;
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TapjoyException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz p4, :cond_1

    .line 136
    invoke-interface {p4}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    :cond_1
    move v0, v7

    .line 137
    goto :goto_0
.end method

.method public static setFlagKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    .line 47
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public appPause()V
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appPause()V

    .line 192
    return-void
.end method

.method public appResume()V
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appResume()V

    .line 200
    return-void
.end method

.method public awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .prologue
    .line 373
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJPoints;->awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V

    .line 374
    return-void
.end method

.method public cacheVideos()V
    .locals 1

    .prologue
    .line 680
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyVideo;->cacheVideos()V

    .line 681
    return-void
.end method

.method public enableBannerAdAutoRefresh(Z)V
    .locals 1
    .param p1, "shouldAutoRefresh"    # Z

    .prologue
    .line 579
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->enableAutoRefresh(Z)V

    .line 580
    return-void
.end method

.method public enableDisplayAdAutoRefresh(Z)V
    .locals 1
    .param p1, "shouldAutoRefresh"    # Z

    .prologue
    .line 567
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->enableAutoRefresh(Z)V

    .line 568
    return-void
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 1
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public enableVideoCache(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 669
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->enableVideoCache(Z)V

    .line 670
    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getCurrencyMultiplier()F

    move-result v0

    return v0
.end method

.method public getDailyRewardAd(Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    .prologue
    .line 492
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDailyRewardAd;->getDailyRewardAd(Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V

    .line 493
    return-void
.end method

.method public getDailyRewardAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDailyRewardAdNotifier;

    .prologue
    .line 508
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyDailyRewardAd;->getDailyRewardAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDailyRewardAdNotifier;)V

    .line 509
    return-void
.end method

.method public getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 619
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 620
    return-void
.end method

.method public getDisplayAd(Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 592
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 593
    return-void
.end method

.method public getDisplayAdWithCurrencyID(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currencyID"    # Ljava/lang/String;
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 633
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 634
    return-void
.end method

.method public getDisplayAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 2
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 607
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 608
    return-void
.end method

.method public getFeaturedApp(Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 437
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFeaturedApp(Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    .line 438
    return-void
.end method

.method public getFeaturedAppWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 451
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyFullScreenAd;->getFeaturedApp(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    .line 452
    return-void
.end method

.method public getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 400
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 401
    return-void
.end method

.method public getFullScreenAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 414
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAd(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 415
    return-void
.end method

.method public getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyNotifier;

    .prologue
    .line 351
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJPoints;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 352
    return-void
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyVideoNotifier;

    .prologue
    .line 649
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 650
    return-void
.end method

.method public sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "price"    # F
    .param p3, "quantity"    # I
    .param p4, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 714
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/TapjoyEvent;->sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V

    .line 715
    return-void
.end method

.method public sendShutDownEvent()V
    .locals 1

    .prologue
    .line 701
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyEvent;->sendShutDownEvent()V

    .line 702
    return-void
.end method

.method public setBannerAdSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 557
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->setBannerAdSize(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .prologue
    .line 257
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setCurrencyMultiplier(F)V

    .line 258
    return-void
.end method

.method public setDisplayAdSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 541
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->setDisplayAdSize(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .prologue
    .line 383
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJPoints;->setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    .line 384
    return-void
.end method

.method public setExternalResource(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyUtil;->setResource(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public setFeaturedAppDisplayCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 462
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->setDisplayCount(I)V

    .line 463
    return-void
.end method

.method public setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyViewNotifier;

    .prologue
    .line 277
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V

    .line 278
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setVideoCacheCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 659
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->setVideoCacheCount(I)V

    .line 660
    return-void
.end method

.method public setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyVideoNotifier;

    .prologue
    .line 689
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 690
    return-void
.end method

.method public showDailyRewardAd()V
    .locals 1

    .prologue
    .line 522
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDailyRewardAd:Lcom/tapjoy/TapjoyDailyRewardAd;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDailyRewardAd;->showDailyRewardAd()V

    .line 523
    return-void
.end method

.method public showFeaturedAppFullScreenAd()V
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyFullScreenAd;->showFeaturedAppFullScreenAd()V

    .line 475
    return-void
.end method

.method public showFullScreenAd()V
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyFullScreenAd;->showFullScreenAd()V

    .line 426
    return-void
.end method

.method public showOffers()V
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V

    .line 308
    return-void
.end method

.method public showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyOffersNotifier;

    .prologue
    .line 328
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V

    .line 329
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z

    .prologue
    .line 318
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V

    .line 319
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyOffersNotifier;

    .prologue
    .line 341
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V

    .line 342
    return-void
.end method

.method public spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoySpendPointsNotifier;

    .prologue
    .line 362
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJPoints;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V

    .line 363
    return-void
.end method
