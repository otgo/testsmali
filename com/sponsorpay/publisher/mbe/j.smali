.class final Lcom/sponsorpay/publisher/mbe/j;
.super Ljava/lang/Object;
.source "SPBrandEngageClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/j;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/j;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    :try_start_0
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/j;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->j(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/j;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->m(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/j;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v4}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->n(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sponsorpay/publisher/mbe/j;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v6}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->o(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    const-string v1, "SPBrandEngageClient"

    const-string v2, "Error in VCS request"

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 710
    :cond_0
    const-string v0, "SPBrandEngageClient"

    const-string v1, "There\'s no VCS listener"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
