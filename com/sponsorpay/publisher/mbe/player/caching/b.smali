.class final Lcom/sponsorpay/publisher/mbe/player/caching/b;
.super Ljava/lang/Object;
.source "SPCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/b;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/b;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;)Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v0

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/b;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    new-instance v1, Lcom/sponsorpay/publisher/mbe/player/caching/e;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/e;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;Lcom/sponsorpay/publisher/mbe/player/caching/e;)Lcom/sponsorpay/publisher/mbe/player/caching/e;

    .line 44
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/b;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    new-instance v1, Lcom/sponsorpay/publisher/mbe/player/caching/d;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/d;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;Lcom/sponsorpay/publisher/mbe/player/caching/d;)Lcom/sponsorpay/publisher/mbe/player/caching/d;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/b;->b:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheManager;)Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/b;->a:Landroid/content/Context;

    const-class v2, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    :cond_1
    return-void
.end method
