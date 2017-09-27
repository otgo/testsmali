.class final Lcom/sponsorpay/publisher/mbe/b;
.super Landroid/content/BroadcastReceiver;
.source "SPBrandEngageClient.java"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/b;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 195
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 197
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/b;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->a(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    move-result-object v0

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;->SHOWING_OFFERS:Lcom/sponsorpay/publisher/mbe/SPBrandEngageOffersStatus;

    if-ne v0, v1, :cond_1

    .line 199
    const-string v0, "SPBrandEngageClient"

    const-string v1, "Connection has been lost"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/b;->a:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->b(Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sponsorpay/publisher/mbe/c;

    invoke-direct {v1, p0}, Lcom/sponsorpay/publisher/mbe/c;-><init>(Lcom/sponsorpay/publisher/mbe/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    :cond_1
    return-void
.end method
