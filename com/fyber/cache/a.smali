.class final Lcom/fyber/cache/a;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/fyber/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/fyber/cache/CacheManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fyber/cache/a;->b:Lcom/fyber/cache/CacheManager;

    iput-object p2, p0, Lcom/fyber/cache/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fyber/cache/a;->b:Lcom/fyber/cache/CacheManager;

    invoke-static {v0}, Lcom/fyber/cache/CacheManager;->a(Lcom/fyber/cache/CacheManager;)Lcom/fyber/cache/internal/f;

    move-result-object v0

    sget-object v1, Lcom/fyber/cache/internal/f;->a:Lcom/fyber/cache/internal/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/fyber/cache/a;->b:Lcom/fyber/cache/CacheManager;

    new-instance v1, Lcom/fyber/cache/internal/f;

    iget-object v2, p0, Lcom/fyber/cache/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/fyber/cache/internal/f;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/fyber/cache/CacheManager;->a(Lcom/fyber/cache/CacheManager;Lcom/fyber/cache/internal/f;)Lcom/fyber/cache/internal/f;

    .line 66
    iget-object v0, p0, Lcom/fyber/cache/a;->b:Lcom/fyber/cache/CacheManager;

    new-instance v1, Lcom/fyber/cache/internal/e;

    iget-object v2, p0, Lcom/fyber/cache/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/fyber/cache/internal/e;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/fyber/cache/CacheManager;->a(Lcom/fyber/cache/CacheManager;Lcom/fyber/cache/internal/e;)Lcom/fyber/cache/internal/e;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/fyber/cache/a;->b:Lcom/fyber/cache/CacheManager;

    invoke-static {v0}, Lcom/fyber/cache/CacheManager;->a(Lcom/fyber/cache/CacheManager;)Lcom/fyber/cache/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/internal/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fyber/cache/a;->a:Landroid/content/Context;

    const-class v2, Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    iget-object v1, p0, Lcom/fyber/cache/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "FybCacheManager"

    const-string v1, "Cache is not enabled."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
