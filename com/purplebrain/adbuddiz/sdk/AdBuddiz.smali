.class public Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

.field private static d:Ljava/lang/Boolean;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->d:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static a()Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;
    .locals 2

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->d:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;
    .locals 1

    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a()Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    move-result-object v0

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    const-string v3, "cacheAds"

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "Can\'t cache ads: cacheAds() context parameter is null."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/h/u;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, "Can\'t cache ads: no Publisher Key set. Call AdBuddiz.setPublisherKey(); before calling cacheAds();"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/e;

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/Throwable;)V

    const-string v1, "AdBuddiz.cacheAds() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ABZ-prefs"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "aif"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_e

    move v3, v1

    :goto_1
    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/h/a/f;

    invoke-direct {v4, p1}, Lcom/purplebrain/adbuddiz/sdk/h/a/f;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_3
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/purplebrain/adbuddiz/sdk/h/x;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ABZ-prefs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "tm"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "tm"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eq v5, v3, :cond_12

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "tm"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v3, v1

    :goto_2
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/purplebrain/adbuddiz/sdk/h/u;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ABZ-prefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "LAST_PUBLISHER_KEY"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "LAST_PUBLISHER_KEY"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "LAST_PUBLISHER_KEY"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v2, v1

    :cond_4
    :goto_3
    if-nez v3, :cond_5

    if-eqz v2, :cond_7

    :cond_5
    const-string v1, "Configuration changed."

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;)V

    const-string v1, "ABZ-impr"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/c;->a(Landroid/content/SharedPreferences;)V

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a()Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/k;->a()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ABZ_cfg.abz"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const/4 v4, 0x0

    sput-object v4, Lcom/purplebrain/adbuddiz/sdk/d/i;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;

    :cond_6
    const/4 v4, 0x0

    sput-object v4, Lcom/purplebrain/adbuddiz/sdk/d/i;->c:Ljava/lang/String;

    const/4 v4, 0x0

    sput-object v4, Lcom/purplebrain/adbuddiz/sdk/d/i;->b:Ljava/lang/Integer;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/purplebrain/adbuddiz/sdk/d/i;->d:Ljava/lang/Long;

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/h/u;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "ABZ-prefs"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v4, "LAST_PUBLISHER_KEY"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/purplebrain/adbuddiz/sdk/h/u;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "tm"

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/purplebrain/adbuddiz/sdk/h/x;->a(Landroid/content/Context;)Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->d()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a()Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v4

    iget-object v1, v4, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_8

    :try_start_4
    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    :goto_4
    :try_start_5
    iput-object v1, v4, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    :cond_8
    iget-object v1, v4, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_9

    :try_start_6
    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c(Landroid/content/Context;)Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    :goto_5
    :try_start_7
    iput-object v0, v4, Lcom/purplebrain/adbuddiz/sdk/d/a;->c:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    :cond_9
    iget-object v0, v4, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v4, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()V

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e()V

    :cond_b
    iget-object v0, v4, Lcom/purplebrain/adbuddiz/sdk/d/a;->a:Lcom/purplebrain/adbuddiz/sdk/d/k;

    iget-object v1, v4, Lcom/purplebrain/adbuddiz/sdk/d/a;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/k;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_c

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/d/b;

    invoke-direct {v1, v4, p1}, Lcom/purplebrain/adbuddiz/sdk/d/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/d/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/purplebrain/adbuddiz/sdk/d/a;->b:Z

    if-nez v3, :cond_d

    if-eqz v2, :cond_0

    :cond_d
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a()Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c()V

    goto/16 :goto_0

    :cond_e
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_f

    move v3, v1

    goto/16 :goto_1

    :cond_f
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_10

    move v3, v1

    goto/16 :goto_1

    :cond_10
    move v3, v2

    goto/16 :goto_1

    :cond_11
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "tm"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_12
    move v3, v2

    goto/16 :goto_2

    :cond_13
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "LAST_PUBLISHER_KEY"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :catch_1
    move-exception v1

    const-string v1, "ABZ_next.abz"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-object v1, v0

    goto/16 :goto_4

    :catch_2
    move-exception v1

    const-string v1, "ABZ_prev.abz"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t show Ad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V
    .locals 4

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d;->a:[I

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didFailToShowAd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/l;

    invoke-direct {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/h/l;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->c()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/d;->c:Lcom/purplebrain/adbuddiz/sdk/e/e;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/d;->b:[I

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/e/e;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/g;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/g;-><init>()V

    iput-object p1, v0, Lcom/purplebrain/adbuddiz/sdk/g/g;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/g/g;->f:Lcom/purplebrain/adbuddiz/sdk/e/d;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/g;->e()V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-void

    :pswitch_0
    const-string v0, "AdBuddiz only shows ads for Android SDK >= 2.1 - Eclair."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "showAd() activity parameter is null."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "Add <uses-permission android:name=\"android.permission.INTERNET\" /> in AndroidManifest.xml."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "Add AdBuddiz.setPublisherKey(); call before calling cacheAds();"

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    const-string v0, " ---------------------------------------------------------------------- "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v0, " Missing AdBuddizActivity in Manifest, add this :                       "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v0, " <activity android:name=\"com.purplebrain.adbuddiz.sdk.AdBuddizActivity\" "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v0, "           android:theme=\"@android:style/Theme.Translucent\" />          "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v0, " ---------------------------------------------------------------------- "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "AdBuddiz Config isn\'t ready yet. Did you call cacheAds ? Please wait for cache initialization..."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "AdBuddiz Config is expired. Currently updating..."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "Check Publisher Key value in AdBuddiz.setPublisherKey(); call."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "Check Publisher Key value in AdBuddiz.setPublisherKey(); call. That key can only work with an iOS application."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "This placement is blocked, no Ad will be shown."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "Connect device to Internet."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    const-string v0, "Server request responded HTTP \'403 Forbidden\'."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v0, "You may be behind a proxy blocking all communications from the SDK."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v0, "Try to open to www.adbuddiz.com on the browser of your device to check if our service is reachable."

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "Currently caching ads..."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "No ad inventory is currently available for your parameters (Country, Device, OS...)."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad was already shown less than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->a()Lcom/purplebrain/adbuddiz/sdk/h/t;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms ago. Please wait between calls."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "Ad is already displayed on screen."

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    :try_start_1
    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/e/b;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :pswitch_12
    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/e/b;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)Z
    .locals 1

    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/e/d;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/e;->b:Lcom/purplebrain/adbuddiz/sdk/e/e;

    invoke-direct {v4, v1, p2}, Lcom/purplebrain/adbuddiz/sdk/e/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->a()Lcom/purplebrain/adbuddiz/sdk/h/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, " ----------------------------------------------------------------- "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v1, " WARNING - cacheAds wasn\'t called! You MUST call cacheAds before   "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v1, " isReadyToShowAd.                                                  "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v1, " isReadyToShowAd will ALWAYS return false.                         "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v1, " ----------------------------------------------------------------- "

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    iget-object v1, v5, Lcom/purplebrain/adbuddiz/sdk/h/t;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, v5, Lcom/purplebrain/adbuddiz/sdk/h/t;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->d()J
    :try_end_2
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    move v3, v0

    :goto_2
    :try_start_3
    const-string v1, "isReadyToShowAd"

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a()Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b()Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    :try_end_3
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    :goto_3
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/purplebrain/adbuddiz/sdk/h/t;->c:Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_4
    :try_start_5
    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v3, 0x0

    invoke-static {v4, v1, v3, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_5
    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v6, 0x0

    invoke-static {v4, v3, v6, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    const-string v2, "AdBuddiz.isReadyToShowAd() Exception : "

    invoke-static {v2, v1}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v1

    move v2, v3

    goto :goto_5

    :catch_3
    move-exception v1

    move v2, v3

    goto :goto_4

    :cond_2
    move v3, v2

    goto :goto_2
.end method

.method private static b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->CONFIG_NOT_READY:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    if-eq v2, p0, :cond_0

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->CONFIG_EXPIRED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    if-ne v2, p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a()Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b()Lcom/purplebrain/adbuddiz/sdk/e/a/a;
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/a;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/a;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/a/b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/q;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/q;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;->isAdOnScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/c;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/c;-><init>()V

    throw v0

    :cond_2
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v2}, Lcom/purplebrain/adbuddiz/sdk/h/a/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    :goto_0
    if-nez v2, :cond_5

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/n;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/n;-><init>()V

    throw v0

    :cond_3
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/m;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/d/i;->c()V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/n; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/f; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->a()Lcom/purplebrain/adbuddiz/sdk/h/t;

    move-result-object v2

    iget-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/h/t;->a:Ljava/lang/Long;

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/h/t;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->b()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_7

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/h/t;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    move v2, v0

    :goto_1
    if-nez v2, :cond_6

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->a()Lcom/purplebrain/adbuddiz/sdk/h/t;

    move-result-object v2

    iget-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/h/t;->b:Ljava/lang/Long;

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/h/t;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->b()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_8

    iget-object v2, v2, Lcom/purplebrain/adbuddiz/sdk/h/t;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_8

    :goto_2
    if-eqz v0, :cond_9

    :cond_6
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/p;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/p;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->e()V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->e()V

    throw v0

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/o;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/o;-><init>()V

    throw v0

    :cond_a
    return-void
.end method

.method public static declared-synchronized cacheAds(Landroid/app/Activity;)V
    .locals 2

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a()Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    goto :goto_0
.end method

.method private declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/e/d;

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/e;->a:Lcom/purplebrain/adbuddiz/sdk/e/e;

    invoke-direct {v3, v0, p2}, Lcom/purplebrain/adbuddiz/sdk/e/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->ACTIVITY_PARAMETER_IS_NULL:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, " ----------------------------------------------------------------- "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v0, " WARNING - cacheAds wasn\'t called! You MUST call cacheAds before   "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v0, " showAd.                                                           "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v0, " cacheAds will be called automatically. showAd will be delayed.    "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    const-string v0, " ----------------------------------------------------------------- "

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->ACTIVITY_PARAMETER_IS_NULL:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/a;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->MISSING_ADBUDDIZ_ACTIVITY_IN_MANIFEST:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_4
    const-string v0, "showAd"

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_5
    invoke-static {p1, p2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->c(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a()Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b()Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    move-result-object v5

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d()V

    invoke-virtual {v4}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e()V

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/t;->a()Lcom/purplebrain/adbuddiz/sdk/h/t;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v4, Lcom/purplebrain/adbuddiz/sdk/h/t;->a:Ljava/lang/Long;

    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    const-class v7, Lcom/purplebrain/adbuddiz/sdk/AdBuddizActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "a"

    invoke-virtual {v5}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->a()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "p"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "fs"

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/h/n;->a(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "wt"

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/h/n;->b(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "suf"

    invoke-static {p1}, Lcom/purplebrain/adbuddiz/sdk/h/n;->c(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Lcom/purplebrain/adbuddiz/sdk/b/l; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/h/j;

    invoke-direct {v2}, Lcom/purplebrain/adbuddiz/sdk/h/j;-><init>()V

    invoke-static {v2}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/purplebrain/adbuddiz/sdk/c;

    invoke-direct {v4, p0, v5}, Lcom/purplebrain/adbuddiz/sdk/c;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catch Lcom/purplebrain/adbuddiz/sdk/b/l; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/purplebrain/adbuddiz/sdk/b/b; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    if-nez v1, :cond_0

    :try_start_7
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->f()Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lcom/purplebrain/adbuddiz/sdk/h/f;->a(Ljava/lang/Long;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/b;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_8
    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    const-string v1, "AdBuddiz.showAd() Exception : "

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v1, v2

    :goto_2
    :try_start_9
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a()Lcom/purplebrain/adbuddiz/sdk/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c()V

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    iget-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v1, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;ZZ)V

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/b/b;->a:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v1, v2

    goto :goto_1

    :catch_4
    move-exception v0

    move v2, v1

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a()Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getDelegate()Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;
    .locals 1

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a()Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    return-object v0
.end method

.method public static getType()Ljava/lang/String;
    .locals 1

    const-string v0, "Java"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.15"

    return-object v0
.end method

.method public static declared-synchronized isReadyToShowAd(Landroid/app/Activity;)Z
    .locals 3

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a()Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    move-result-object v0

    const-string v2, "Default"

    invoke-direct {v0, p0, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b(Landroid/content/Context;Ljava/lang/String;)Z
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
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a()Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->b(Landroid/content/Context;Ljava/lang/String;)Z
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

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/g/a;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/e;->g:Lcom/purplebrain/adbuddiz/sdk/e/e;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/Throwable;)V

    const-string v2, "AdBuddiz.onDestroy() Exception : "

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
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

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a()Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    move-result-object v0

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizDelegate;

    return-void
.end method

.method public static declared-synchronized setLogLevel(Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;)V
    .locals 3

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizLogLevel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/e;->d:Lcom/purplebrain/adbuddiz/sdk/e/e;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/Throwable;)V

    const-string v2, "AdBuddiz.setLogLevel() Exception : "

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
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
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/u;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/e;->e:Lcom/purplebrain/adbuddiz/sdk/e/e;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/Throwable;)V

    const-string v2, "AdBuddiz.setPublisherKey() Exception : "

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
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
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/h/x;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/e/e;->f:Lcom/purplebrain/adbuddiz/sdk/e/e;

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/Throwable;)V

    const-string v2, "AdBuddiz.setTestModeActive() Exception : "

    invoke-static {v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
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
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a()Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    move-result-object v0

    const-string v2, "Default"

    invoke-direct {v0, p0, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->e(Landroid/content/Context;Ljava/lang/String;)V
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
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a()Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
