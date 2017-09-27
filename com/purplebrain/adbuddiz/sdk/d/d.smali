.class final Lcom/purplebrain/adbuddiz/sdk/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/purplebrain/adbuddiz/sdk/g/i;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/purplebrain/adbuddiz/sdk/g/h;)V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/d/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/d/a;Z)Z

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b(Lcom/purplebrain/adbuddiz/sdk/d/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/h;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/h;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/purplebrain/adbuddiz/sdk/g/h;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0, v6}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/d/a;Z)Z

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->b(Lcom/purplebrain/adbuddiz/sdk/d/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/h;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->c(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/h;->f()V

    :cond_0
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->d(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/g/h;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lcom/purplebrain/adbuddiz/sdk/e/a/a;->e()Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    move-result-object v0

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/e/a/h;->b:Lcom/purplebrain/adbuddiz/sdk/e/a/h;

    if-ne v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/d/i;->a()Lcom/purplebrain/adbuddiz/sdk/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/purplebrain/adbuddiz/sdk/d/i;->b()Lcom/purplebrain/adbuddiz/sdk/e/b;

    move-result-object v1

    iget-object v2, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v1, Lcom/purplebrain/adbuddiz/sdk/e/b;->k:I

    if-le v2, v3, :cond_1

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, v1, Lcom/purplebrain/adbuddiz/sdk/e/b;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v2, Lcom/purplebrain/adbuddiz/sdk/g/g;

    invoke-direct {v2}, Lcom/purplebrain/adbuddiz/sdk/g/g;-><init>()V

    iput-object p2, v2, Lcom/purplebrain/adbuddiz/sdk/g/g;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    sget-object v3, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->INVALID_AD:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/g/g;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    new-instance v3, Lcom/purplebrain/adbuddiz/sdk/e/d;

    sget-object v4, Lcom/purplebrain/adbuddiz/sdk/e/e;->c:Lcom/purplebrain/adbuddiz/sdk/e/e;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/purplebrain/adbuddiz/sdk/e/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/purplebrain/adbuddiz/sdk/g/g;->f:Lcom/purplebrain/adbuddiz/sdk/e/d;

    const-string v3, "RTB ad content size is over the limit fixed in the configuration. %d > %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/purplebrain/adbuddiz/sdk/e/a/i;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    iget v0, v1, Lcom/purplebrain/adbuddiz/sdk/e/b;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/purplebrain/adbuddiz/sdk/g/g;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/purplebrain/adbuddiz/sdk/g/g;->e()V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e(Lcom/purplebrain/adbuddiz/sdk/d/a;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-static {p2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Lcom/purplebrain/adbuddiz/sdk/e/a/c;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_2
    const-string v1, "aia"

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/f;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-wide v2, p2, Lcom/purplebrain/adbuddiz/sdk/e/a/c;->c:J

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    const-string v2, "aia"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/purplebrain/adbuddiz/sdk/h/b/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->e(Lcom/purplebrain/adbuddiz/sdk/d/a;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ABAlreadyInstalledApps.appendAlreadyInstalledApp()"

    invoke-static {v1, v0}, Lcom/purplebrain/adbuddiz/sdk/h/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0, p2}, Lcom/purplebrain/adbuddiz/sdk/d/a;->a(Lcom/purplebrain/adbuddiz/sdk/d/a;Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/d/d;->a:Lcom/purplebrain/adbuddiz/sdk/d/a;

    invoke-static {v0}, Lcom/purplebrain/adbuddiz/sdk/d/a;->f(Lcom/purplebrain/adbuddiz/sdk/d/a;)Lcom/purplebrain/adbuddiz/sdk/d/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/purplebrain/adbuddiz/sdk/d/k;->a(Lcom/purplebrain/adbuddiz/sdk/e/a/a;)V

    goto :goto_0
.end method
