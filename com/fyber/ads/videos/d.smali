.class final Lcom/fyber/ads/videos/d;
.super Landroid/content/BroadcastReceiver;
.source "RewardedVideoClient.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/c;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 149
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 151
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->a(Lcom/fyber/ads/videos/c;)Lcom/fyber/ads/videos/u;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/videos/u;->d:Lcom/fyber/ads/videos/u;

    if-ne v0, v1, :cond_1

    .line 153
    const-string v0, "RewardedVideoClient"

    const-string v1, "Connection has been lost"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->b(Lcom/fyber/ads/videos/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fyber/ads/videos/e;

    invoke-direct {v1, p0}, Lcom/fyber/ads/videos/e;-><init>(Lcom/fyber/ads/videos/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_1
    return-void
.end method
