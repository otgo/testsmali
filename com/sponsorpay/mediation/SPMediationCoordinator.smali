.class public Lcom/sponsorpay/mediation/SPMediationCoordinator;
.super Ljava/lang/Object;
.source "SPMediationCoordinator.java"


# static fields
.field public static final INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;


# instance fields
.field private a:Z

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/mediation/SPMediationAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/sponsorpay/mediation/SPMediationCoordinator;

    invoke-direct {v0}, Lcom/sponsorpay/mediation/SPMediationCoordinator;-><init>()V

    sput-object v0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->a:Z

    .line 38
    new-instance v0, Lcom/sponsorpay/mediation/b;

    invoke-direct {v0, p0}, Lcom/sponsorpay/mediation/b;-><init>(Lcom/sponsorpay/mediation/SPMediationCoordinator;)V

    iput-object v0, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->b:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/sponsorpay/mediation/SPMediationCoordinator;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/sponsorpay/mediation/SPMediationCoordinator;Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyMediationAdaptersList"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public isNetworkAvailable(Ljava/lang/String;Lcom/sponsorpay/mediation/SPMediationAdFormat;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    .line 104
    if-eqz v0, :cond_2

    .line 105
    sget-object v3, Lcom/sponsorpay/mediation/SPMediationAdapter$1;->a:[I

    invoke-virtual {p2}, Lcom/sponsorpay/mediation/SPMediationAdFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 107
    :goto_0
    return v0

    .line 105
    :pswitch_0
    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 107
    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showInterstitial(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/a;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 144
    sget-object v2, Lcom/sponsorpay/mediation/SPMediationAdFormat;->Interstitial:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    invoke-virtual {p0, v0, v2}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->isNetworkAvailable(Ljava/lang/String;Lcom/sponsorpay/mediation/SPMediationAdFormat;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->show(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/a;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 145
    goto :goto_0

    :cond_1
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public startMediationAdapters(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->a:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->a:Z

    .line 61
    new-instance v0, Lcom/sponsorpay/mediation/c;

    const-string v1, "SPMediationCoordinator"

    invoke-direct {v0, p0, v1, p1}, Lcom/sponsorpay/mediation/c;-><init>(Lcom/sponsorpay/mediation/SPMediationCoordinator;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/c;->start()V

    goto :goto_0
.end method

.method public startVideoEngagement(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationAdFormat;->RewardedVideo:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    invoke-virtual {p0, p2, v0}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->isNetworkAvailable(Ljava/lang/String;Lcom/sponsorpay/mediation/SPMediationAdFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p3}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->startVideo(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;Ljava/util/Map;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-direct {p0, p2}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventAdapterNotIntegrated:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-interface {p4, p2, v0, v1, p3}, Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;->videoEventOccured(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public validateInterstitialNetwork(Landroid/content/Context;Lcom/sponsorpay/publisher/interstitial/a;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 135
    sget-object v2, Lcom/sponsorpay/mediation/SPMediationAdFormat;->Interstitial:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    invoke-virtual {p0, v0, v2}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->isNetworkAvailable(Ljava/lang/String;Lcom/sponsorpay/mediation/SPMediationAdFormat;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->isAdAvailable(Landroid/content/Context;Lcom/sponsorpay/publisher/interstitial/a;)Z

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 136
    goto :goto_0

    :cond_1
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public validateVideoNetwork(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationAdFormat;->RewardedVideo:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    invoke-virtual {p0, p2, v0}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->isNetworkAvailable(Ljava/lang/String;Lcom/sponsorpay/mediation/SPMediationAdFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p4, p3}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->videosAvailable(Landroid/content/Context;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;Ljava/util/Map;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-direct {p0, p2}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationAdapterNotIntegrated:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    invoke-interface {p4, p2, v0, v1, p3}, Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;->validationEventResult(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;Ljava/util/Map;)V

    goto :goto_0
.end method
