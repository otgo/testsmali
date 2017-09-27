.class public final Lcom/sponsorpay/publisher/interstitial/b;
.super Landroid/os/AsyncTask;
.source "SPInterstitialAdsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sponsorpay/publisher/interstitial/a;",
        "Ljava/lang/Void;",
        "Lcom/sponsorpay/publisher/interstitial/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    return-void
.end method

.method public static a([Lcom/sponsorpay/publisher/interstitial/a;)V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/b;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/interstitial/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/interstitial/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 30
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 24
    check-cast p1, [Lcom/sponsorpay/publisher/interstitial/a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v2, "SPInterstitialAdsProcessor"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p1, v2

    const-string v4, "SPInterstitialAdsProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Processing ad from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/a;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sponsorpay/mediation/SPMediationAdFormat;->Interstitial:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    invoke-virtual {v4, v5, v6}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->isNetworkAvailable(Ljava/lang/String;Lcom/sponsorpay/mediation/SPMediationAdFormat;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SPInterstitialAdsProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is available, proceeding..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationRequest:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v4, v0, v5}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    sget-object v4, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    invoke-virtual {v4, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->validateAd(Lcom/sponsorpay/publisher/interstitial/a;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "SPInterstitialAdsProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad is available from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v3, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v2, v0, v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v3, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v2, v1, v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    :goto_1
    return-object v0

    :cond_0
    const-string v4, "SPInterstitialAdsProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No ad available from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationNoFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v4, v0, v5}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_1
    const-string v4, "SPInterstitialAdsProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not integrated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->NotIntegrated:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v4, v0, v5}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    goto :goto_2

    :cond_2
    const-string v0, "SPInterstitialAdsProcessor"

    const-string v2, "There are no ads available currently."

    invoke-static {v0, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationNoFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v0, v1, v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/a;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    move-object v0, v1

    goto :goto_1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/sponsorpay/publisher/interstitial/a;

    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    invoke-virtual {v0, p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->availableAd(Lcom/sponsorpay/publisher/interstitial/a;)V

    return-void
.end method
