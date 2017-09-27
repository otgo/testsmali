.class public final Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/AdBuddiz$RewardedVideo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized cacheAds(Landroid/app/Activity;)V
    .locals 2

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getDelegate()Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    return-object v0
.end method

.method public static getType()Ljava/lang/String;
    .locals 1

    const-string v0, "Java"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.1.5"

    return-object v0
.end method

.method public static declared-synchronized isReadyToShowAd(Landroid/app/Activity;)Z
    .locals 3

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    const-string v2, "Default"

    invoke-virtual {v0, p0, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z
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

.method public static declared-synchronized isReadyToShowAd(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z
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

.method public static declared-synchronized onDestroy()V
    .locals 3

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/b;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->j:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/Throwable;)V

    const-string v2, "AdBuddiz.onDestroy() Exception : "

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDelegate(Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;)V
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/c/a;->b:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    return-void
.end method

.method public static declared-synchronized setLogLevel(Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;)V
    .locals 3

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->g:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/Throwable;)V

    const-string v2, "AdBuddiz.setLogLevel() Exception : "

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPublisherKey(Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/i/q;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->h:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/Throwable;)V

    const-string v2, "AdBuddiz.setPublisherKey() Exception : "

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setTestModeActive()V
    .locals 3

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/u;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/f/d$a;->i:Lcom/purplebrain/adbuddiz/sdk/f/d$a;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/Throwable;)V

    const-string v2, "AdBuddiz.setTestModeActive() Exception : "

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized showAd(Landroid/app/Activity;)V
    .locals 3

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    const-string v2, "Default"

    invoke-virtual {v0, p0, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized showAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/c/a;->a()Lcom/purplebrain/adbuddiz/sdk/c/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
