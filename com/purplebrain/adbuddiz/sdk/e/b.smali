.class public final Lcom/purplebrain/adbuddiz/sdk/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/h/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/e/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/purplebrain/adbuddiz/sdk/e/b;

.field private static b:Lcom/purplebrain/adbuddiz/sdk/f/b;

.field private static c:Ljava/lang/Integer;

.field private static d:Ljava/lang/String;


# instance fields
.field private e:Ljava/lang/Long;

.field private f:Lcom/purplebrain/adbuddiz/sdk/e/b$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/purplebrain/adbuddiz/sdk/e/b;
    .locals 2

    const-class v1, Lcom/purplebrain/adbuddiz/sdk/e/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/b;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->a:Lcom/purplebrain/adbuddiz/sdk/e/b;
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
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/b;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/f/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/f/b;->a(Ljava/lang/String;)V
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
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/b;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/f/b;-><init>()V

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;

    invoke-virtual {v0, p1}, Lcom/purplebrain/adbuddiz/sdk/f/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/f/c;->a(Lcom/purplebrain/adbuddiz/sdk/f/b;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ABZ_31_cfg.abz"

    invoke-static {v1, v2, v0}, Lcom/purplebrain/adbuddiz/sdk/i/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b$a;->a()V
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

.method private declared-synchronized h()Z
    .locals 6

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;
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

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v1

    iget-wide v4, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v1

    iget-wide v4, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->b:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v1

    iget-wide v2, v1, Lcom/purplebrain/adbuddiz/sdk/f/b;->a:J

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

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->c:Ljava/lang/Integer;

    sput-object p2, Lcom/purplebrain/adbuddiz/sdk/e/b;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/e/b$a;)V
    .locals 1

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->f:Lcom/purplebrain/adbuddiz/sdk/e/b$a;

    invoke-interface {v0}, Lcom/purplebrain/adbuddiz/sdk/e/b$a;->a()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/f/b;->j:Ljava/util/List;

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

.method public final declared-synchronized b()Lcom/purplebrain/adbuddiz/sdk/f/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/f/b;->a()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    sput-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;

    :cond_0
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;
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
    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->c(Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/e/b;->d(Ljava/lang/String;)V
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

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/n;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/n;-><init>()V

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

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/o;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/o;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/r;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/r;-><init>()V

    throw v0

    :cond_2
    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/purplebrain/adbuddiz/sdk/e/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/i/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/l;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/l;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    new-instance v1, Lcom/purplebrain/adbuddiz/sdk/b/i;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->valueOf(Ljava/lang/String;)Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/b/i;-><init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/m;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/m;-><init>()V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/k;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/k;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/b/j;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/b/j;-><init>()V

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
    invoke-direct {p0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->e()V
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
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->e:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->e:Ljava/lang/Long;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/i/h;->a(Ljava/lang/Long;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/j;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/j;-><init>()V

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/h/j;->e:Lcom/purplebrain/adbuddiz/sdk/h/j$a;

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/j;->f()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->e:Ljava/lang/Long;
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
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->e:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/purplebrain/adbuddiz/sdk/e/b;->b()Lcom/purplebrain/adbuddiz/sdk/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ABZ_31_cfg.abz"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    sput-object v2, Lcom/purplebrain/adbuddiz/sdk/e/b;->b:Lcom/purplebrain/adbuddiz/sdk/f/b;

    :cond_0
    sput-object v2, Lcom/purplebrain/adbuddiz/sdk/e/b;->d:Ljava/lang/String;

    sput-object v2, Lcom/purplebrain/adbuddiz/sdk/e/b;->c:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/e/b;->e:Ljava/lang/Long;

    return-void
.end method
