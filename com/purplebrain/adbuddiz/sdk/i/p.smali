.class public Lcom/purplebrain/adbuddiz/sdk/i/p;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/i/p;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->d:Ljava/lang/Long;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->b:Ljava/lang/Long;

    return-void
.end method

.method public static a()J
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->r:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1f4

    goto :goto_0
.end method

.method public static a(Z)Lcom/purplebrain/adbuddiz/sdk/i/p;
    .locals 4

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/p;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/i/p;

    if-nez v0, :cond_1

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/i/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/i/p;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/i/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/i/p;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/i/p;-><init>()V

    sget-object v2, Lcom/purplebrain/adbuddiz/sdk/i/p;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->t:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0xea60

    goto :goto_0
.end method

.method private static h()J
    .locals 2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->r:J

    return-wide v0
.end method


# virtual methods
.method public final c()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->c:Ljava/lang/Long;

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->d:Ljava/lang/Long;

    return-void
.end method

.method public final e()Z
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/p;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/i/p;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 4

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->d:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/i/p;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/e/b;->a()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->s:J

    :goto_0
    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
