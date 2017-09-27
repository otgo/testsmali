.class final Lcom/fyber/ads/videos/k;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fyber/requesters/VirtualCurrencyRequester;

.field final synthetic b:Lcom/fyber/ads/videos/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/c;Lcom/fyber/requesters/VirtualCurrencyRequester;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/fyber/ads/videos/k;->b:Lcom/fyber/ads/videos/c;

    iput-object p2, p0, Lcom/fyber/ads/videos/k;->a:Lcom/fyber/requesters/VirtualCurrencyRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/fyber/ads/videos/k;->b:Lcom/fyber/ads/videos/c;

    invoke-static {v0}, Lcom/fyber/ads/videos/c;->i(Lcom/fyber/ads/videos/c;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/fyber/ads/videos/k;->a:Lcom/fyber/requesters/VirtualCurrencyRequester;

    iget-object v1, p0, Lcom/fyber/ads/videos/k;->b:Lcom/fyber/ads/videos/c;

    invoke-static {v1}, Lcom/fyber/ads/videos/c;->i(Lcom/fyber/ads/videos/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyRequester;->request(Landroid/content/Context;)V

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "There\'s no VCS listener"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
