.class public final Lcom/purplebrain/adbuddiz/sdk/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/g/k;


# static fields
.field public static a:Lcom/purplebrain/adbuddiz/sdk/e/b;

.field public static b:Ljava/lang/Integer;

.field public static c:Ljava/lang/String;

.field private static e:Lcom/purplebrain/adbuddiz/sdk/d/i;


# instance fields
.field public d:Ljava/lang/Long;

.field private f:Lcom/purplebrain/adbuddiz/sdk/d/j;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/i;->f:Lcom/purplebrain/adbuddiz/sdk/d/j;

    return-void
.end method

.method public static declared-synchronized a()Lcom/purplebrain/adbuddiz/sdk/d/i;
    .locals 2

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/d/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->e:Lcom/purplebrain/adbuddiz/sdk/d/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/d/i;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/d/i;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->e:Lcom/purplebrain/adbuddiz/sdk/d/i;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->e:Lcom/purplebrain/adbuddiz/sdk/d/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/b;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/b;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;

    invoke-virtual {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/e/c;->a(Lcom/purplebrain/adbuddiz/sdk/e/b;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ABZ_cfg.abz"

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/h/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/i;->f:Lcom/purplebrain/adbuddiz/sdk/d/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/i;->f:Lcom/purplebrain/adbuddiz/sdk/d/j;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/d/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Z
    .locals 6

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    iget-wide v4, v1, Lcom/purplebrain/adbuddiz/sdk/e/b;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    iget-wide v4, v1, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    iget-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/e/b;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->b:Ljava/lang/Integer;

    sput-object p2, Lcom/purplebrain/adbuddiz/sdk/d/i;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/d/j;)V
    .locals 1

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/i;->f:Lcom/purplebrain/adbuddiz/sdk/d/j;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/i;->f:Lcom/purplebrain/adbuddiz/sdk/d/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/i;->f:Lcom/purplebrain/adbuddiz/sdk/d/j;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/d/j;->a()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/purplebrain/adbuddiz/sdk/e/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->c(Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/a/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/j;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/j;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/u;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/k;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/k;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/n;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/n;-><init>()V

    throw v0

    :cond_2
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/d/i;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/h/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/h;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/h;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/b/e;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->valueOf(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/b/e;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/i;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/i;-><init>()V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/g;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/g;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/f;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/f;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/d/i;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/i;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/i;->d:Ljava/lang/Long;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/f;->a(Ljava/lang/Long;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/j;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/j;-><init>()V

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/g/j;->c:Lcom/purplebrain/adbuddiz/sdk/g/k;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/j;->e()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/i;->d:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/lang/Long;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/i;->d:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
