.class public Lcom/purplebrain/adbuddiz/sdk/AdBuddiz$RewardedVideo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RewardedVideo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized fetch(Landroid/app/Activity;)V
    .locals 6

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz$RewardedVideo;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a()Lcom/purplebrain/adbuddiz/sdk/c/b;

    move-result-object v0

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/f/d;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->d:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    const-string v4, "Default"

    invoke-direct {v2, v3, v4}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "fetch"

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->b(Landroid/content/Context;)V

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/j;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/x;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/a/e;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/b/b;->a()Z

    move-result v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/b/b;->b()Z

    move-result v3

    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const-string v4, "Configuration changed."

    invoke-static {v4}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/b/c;->a(Landroid/content/Context;)V

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/e/b;->g()V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/q;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/b/b;->c()V

    :cond_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/e/b;->d()V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/e;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Landroid/content/Context;)V

    iget-object v5, v4, Lcom/purplebrain/adbuddiz/sdk/e/a;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/a/c;

    invoke-virtual {v4, p0, v5}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/e/a/a/b;)V

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/a;->a()Lcom/purplebrain/adbuddiz/sdk/e/a;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/purplebrain/adbuddiz/sdk/e/a;->b(Z)V
    :try_end_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoError;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->d:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/Throwable;)V

    const-string v2, "AdBuddiz.RewardedVideo.fetch() Exception: "

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static getDelegate()Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoDelegate;
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a()Lcom/purplebrain/adbuddiz/sdk/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/c/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoDelegate;

    return-object v0
.end method

.method public static declared-synchronized isReadyToShow(Landroid/app/Activity;)Z
    .locals 2

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz$RewardedVideo;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a()Lcom/purplebrain/adbuddiz/sdk/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDelegate(Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoDelegate;)V
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a()Lcom/purplebrain/adbuddiz/sdk/c/b;

    move-result-object v0

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/c/b;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizRewardedVideoDelegate;

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a()Lcom/purplebrain/adbuddiz/sdk/c/b;

    move-result-object v0

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/x;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/x;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized show(Landroid/app/Activity;)V
    .locals 2

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz$RewardedVideo;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/b;->a()Lcom/purplebrain/adbuddiz/sdk/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/c/b;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
