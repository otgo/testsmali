.class public final Lcom/sponsorpay/publisher/ofw/a;
.super Lcom/sponsorpay/utils/SPWebClient;
.source "ActivityOfferWebClient.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sponsorpay/utils/SPWebClient;-><init>(Landroid/app/Activity;)V

    .line 31
    iput-boolean p2, p0, Lcom/sponsorpay/publisher/ofw/a;->a:Z

    .line 32
    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 75
    const-string v0, "SPWebClient"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "OfferWall WebView triggered an error. Error code: %d, error description: %s. Failing URL: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sparse-switch p2, :sswitch_data_0

    .line 88
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 91
    :goto_0
    invoke-static {v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/ofw/a;->showDialog(Ljava/lang/String;)V

    .line 92
    return-void

    .line 85
    :sswitch_0
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final onSponsorPayExitScheme(ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/ofw/a;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    .line 38
    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setResult(I)V

    .line 43
    if-nez p2, :cond_3

    .line 54
    :cond_2
    const-string v2, "SPWebClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Should stay open: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/sponsorpay/publisher/ofw/a;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", will close activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 48
    :cond_3
    iget-boolean v2, p0, Lcom/sponsorpay/publisher/ofw/a;->a:Z

    if-nez v2, :cond_4

    .line 49
    :goto_1
    invoke-virtual {p0, p2}, Lcom/sponsorpay/publisher/ofw/a;->launchActivityWithUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 48
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final onTargetActivityStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected final processSponsorPayScheme(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
