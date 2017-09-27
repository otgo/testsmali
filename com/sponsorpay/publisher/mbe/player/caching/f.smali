.class final Lcom/sponsorpay/publisher/mbe/player/caching/f;
.super Landroid/content/BroadcastReceiver;
.source "SPCacheVideoDownloadService.java"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)V
    .locals 1

    .prologue
    .line 559
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->b:Z

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v4, 0x51e

    const/16 v2, 0x514

    .line 564
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "networkInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 566
    if-eqz v0, :cond_0

    .line 569
    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->b:Z

    if-eqz v1, :cond_1

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->b:Z

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    .line 575
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->h(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_0

    .line 578
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->removeMessages(I)V

    .line 579
    const-string v1, "SPCacheVideoDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network connection changed to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheConfiguration$SPNetwork;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 586
    :cond_2
    const-string v0, "SPCacheVideoDownloadService"

    const-string v1, "Connectivity lost"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/f;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService$a;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method
